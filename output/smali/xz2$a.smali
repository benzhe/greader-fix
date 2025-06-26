.class public final Lxz2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfx2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxz2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lhx2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhx2<",
            "Lfx2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[B


# direct methods
.method public constructor <init>(Lhx2;Lwz2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [B

    const/4 v0, 0x0

    aput-byte v0, p2, v0

    .line 2
    iput-object p2, p0, Lxz2$a;->b:[B

    .line 3
    iput-object p1, p0, Lxz2$a;->a:Lhx2;

    return-void
.end method


# virtual methods
.method public final a([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxz2$a;->a:Lhx2;

    .line 2
    iget-object v0, v0, Lhx2;->b:Lix2;

    .line 3
    iget-object v0, v0, Lix2;->d:Ly23;

    .line 4
    sget-object v1, Ly23;->h:Ly23;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v0, v3, [[B

    .line 5
    iget-object v4, p0, Lxz2$a;->a:Lhx2;

    .line 6
    iget-object v4, v4, Lhx2;->b:Lix2;

    .line 7
    invoke-virtual {v4}, Lix2;->a()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lxz2$a;->a:Lhx2;

    .line 8
    iget-object v4, v4, Lhx2;->b:Lix2;

    .line 9
    iget-object v4, v4, Lix2;->a:Ljava/lang/Object;

    .line 10
    check-cast v4, Lfx2;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object p1, p0, Lxz2$a;->b:[B

    aput-object p1, v3, v1

    invoke-static {v3}, Lc50;->C2([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lfx2;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 11
    invoke-static {v0}, Lc50;->C2([[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-array v0, v3, [[B

    .line 12
    iget-object v3, p0, Lxz2$a;->a:Lhx2;

    .line 13
    iget-object v3, v3, Lhx2;->b:Lix2;

    .line 14
    invoke-virtual {v3}, Lix2;->a()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lxz2$a;->a:Lhx2;

    .line 15
    iget-object v2, v2, Lhx2;->b:Lix2;

    .line 16
    iget-object v2, v2, Lix2;->a:Ljava/lang/Object;

    .line 17
    check-cast v2, Lfx2;

    invoke-interface {v2, p1}, Lfx2;->a([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 18
    invoke-static {v0}, Lc50;->C2([[B)[B

    move-result-object p1

    return-object p1
.end method
