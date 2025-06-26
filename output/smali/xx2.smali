.class public final Lxx2;
.super Lax2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lax2<",
        "Lsw2;",
        "Lg03;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lax2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg03;

    .line 2
    new-instance v0, Ly33;

    new-instance v1, Lzx2;

    invoke-direct {v1}, Lzx2;-><init>()V

    .line 3
    invoke-virtual {p1}, Lg03;->B()Lk03;

    move-result-object v2

    const-class v3, Li43;

    invoke-virtual {v1, v2, v3}, Lzw2;->b(Le83;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li43;

    new-instance v2, Lqz2;

    invoke-direct {v2}, Lqz2;-><init>()V

    .line 4
    invoke-virtual {p1}, Lg03;->D()Ly13;

    move-result-object v3

    const-class v4, Lfx2;

    invoke-virtual {v2, v3, v4}, Lzw2;->b(Le83;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfx2;

    .line 5
    invoke-virtual {p1}, Lg03;->D()Ly13;

    move-result-object p1

    invoke-virtual {p1}, Ly13;->D()Lc23;

    move-result-object p1

    invoke-virtual {p1}, Lc23;->x()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ly33;-><init>(Li43;Lfx2;I)V

    return-object v0
.end method
