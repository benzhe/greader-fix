.class public final Lgr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lir2;


# static fields
.field public static final a:Lgl1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lgl1;->W()Lgl1;

    move-result-object v0

    sput-object v0, Lgr2;->a:Lgl1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lgl1;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lhy;,
            Liy;
        }
    .end annotation

    .line 1
    invoke-static {}, Lgl1;->V()Lgl1$b;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    .line 8
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v1, 0xb

    .line 11
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Lgl1$b;->q(Ljava/lang/String;)Lgl1$b;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p1

    .line 14
    iget-boolean v1, v0, Ls63$b;->g:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 16
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 17
    :cond_1
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, p1}, Lgl1;->G(Lgl1;Z)V

    .line 18
    sget-object p1, Lgl1$c;->k:Lgl1$c;

    .line 19
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 21
    iput-boolean v2, v0, Ls63$b;->g:Z

    .line 22
    :cond_2
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Lgl1;

    invoke-static {v1, p1}, Lgl1;->A(Lgl1;Lgl1$c;)V

    .line 23
    :cond_3
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lgl1;

    return-object p1
.end method

.method public final b()Lgl1;
    .locals 1

    .line 1
    sget-object v0, Lgr2;->a:Lgl1;

    return-object v0
.end method
