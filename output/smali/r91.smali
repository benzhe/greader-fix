.class public final Lr91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lll2;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln91;


# direct methods
.method public constructor <init>(Ln91;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr91;->a:Ln91;

    return-void
.end method

.method public static a(Ln91;)Lll2;
    .locals 1

    .line 1
    iget-object p0, p0, Ln91;->b:Lll2;

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lr91;->a:Ln91;

    invoke-static {v0}, Lr91;->a(Ln91;)Lll2;

    move-result-object v0

    return-object v0
.end method
