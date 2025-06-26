.class public final Lsy2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsw2;


# static fields
.field public static final c:[B


# instance fields
.field public final a:Li23;

.field public final b:Lsw2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Lsy2;->c:[B

    return-void
.end method

.method public constructor <init>(Li23;Lsw2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsy2;->a:Li23;

    .line 3
    iput-object p2, p0, Lsy2;->b:Lsw2;

    return-void
.end method


# virtual methods
.method public final a([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsy2;->a:Li23;

    invoke-static {v0}, Lpx2;->i(Li23;)Le83;

    move-result-object v0

    invoke-interface {v0}, Le83;->b()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lsy2;->b:Lsw2;

    sget-object v2, Lsy2;->c:[B

    invoke-interface {v1, v0, v2}, Lsw2;->a([B[B)[B

    move-result-object v1

    .line 3
    iget-object v2, p0, Lsy2;->a:Li23;

    invoke-virtual {v2}, Li23;->x()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lsw2;

    .line 4
    sget-object v4, Lk53;->f:Lk53;

    .line 5
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lk53;->M([BII)Lk53;

    move-result-object v0

    .line 6
    invoke-static {v2, v0, v3}, Lpx2;->b(Ljava/lang/String;Lk53;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lsw2;

    .line 8
    invoke-interface {v0, p1, p2}, Lsw2;->a([B[B)[B

    move-result-object p1

    .line 9
    array-length p2, v1

    add-int/lit8 p2, p2, 0x4

    array-length v0, p1

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    array-length v0, v1

    .line 10
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 11
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
