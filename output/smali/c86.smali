.class public final Lc86;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ly27;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lb86;

.field public final b:Ljj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb86;Ljj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb86;",
            "Ljj7<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc86;->a:Lb86;

    .line 3
    iput-object p2, p0, Lc86;->b:Ljj7;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lc86;->a:Lb86;

    iget-object v1, p0, Lc86;->b:Ljj7;

    invoke-interface {v1}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lh47;->b:Lh47;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lh47;->a(Ljava/lang/String;)Lg47;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lg47;->a()Lf47;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lh47$c;

    const-string v1, "No functional channel service provider found. Try adding a dependency on the grpc-okhttp, grpc-netty, or grpc-netty-shaded artifact"

    invoke-direct {v0, v1}, Lh47$c;-><init>(Ljava/lang/String;)V

    throw v0
.end method
