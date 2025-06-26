.class public final Lp91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln91;

.field public final b:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lt71;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln91;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln91;",
            "Lmb3<",
            "Lt71;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp91;->a:Ln91;

    .line 3
    iput-object p2, p0, Lp91;->b:Lmb3;

    return-void
.end method

.method public static a(Lt71;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lt71;->f:Lnr0;

    .line 2
    iget-object p0, p0, Lnr0;->e:Ljava/lang/String;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 3
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp91;->b:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt71;

    invoke-static {v0}, Lp91;->a(Lt71;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
