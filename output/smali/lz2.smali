.class public final Llz2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvw2;


# instance fields
.field public final a:Lhx2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhx2<",
            "Lvw2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhx2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhx2<",
            "Lvw2;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llz2;->a:Lhx2;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    .line 1
    iget-object v1, p0, Llz2;->a:Lhx2;

    .line 2
    iget-object v1, v1, Lhx2;->b:Lix2;

    .line 3
    invoke-virtual {v1}, Lix2;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Llz2;->a:Lhx2;

    .line 4
    iget-object v2, v2, Lhx2;->b:Lix2;

    .line 5
    iget-object v2, v2, Lix2;->a:Ljava/lang/Object;

    .line 6
    check-cast v2, Lvw2;

    invoke-interface {v2, p1, p2}, Lvw2;->a([B[B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 7
    invoke-static {v0}, Lc50;->C2([[B)[B

    move-result-object p1

    return-object p1
.end method
