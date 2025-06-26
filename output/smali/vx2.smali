.class public final Lvx2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lz23;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyx2;

    invoke-direct {v0}, Lyx2;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 2
    sput-object v0, Lvx2;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lgy2;

    invoke-direct {v0}, Lgy2;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lvx2;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Lly2;

    invoke-direct {v0}, Lly2;-><init>()V

    .line 5
    new-instance v0, Lfy2;

    invoke-direct {v0}, Lfy2;-><init>()V

    .line 6
    new-instance v0, Lry2;

    invoke-direct {v0}, Lry2;-><init>()V

    .line 7
    new-instance v0, Lvy2;

    invoke-direct {v0}, Lvy2;-><init>()V

    .line 8
    new-instance v0, Lmy2;

    invoke-direct {v0}, Lmy2;-><init>()V

    .line 9
    new-instance v0, Lwy2;

    invoke-direct {v0}, Lwy2;-><init>()V

    .line 10
    invoke-static {}, Lz23;->y()Lz23;

    move-result-object v0

    .line 11
    sput-object v0, Lvx2;->c:Lz23;

    .line 12
    :try_start_0
    invoke-static {}, Lvx2;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Luz2;->a:Lz23;

    new-instance v0, Lqz2;

    invoke-direct {v0}, Lqz2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 2
    new-instance v0, Lpz2;

    invoke-direct {v0}, Lpz2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 3
    new-instance v0, Lxz2;

    invoke-direct {v0}, Lxz2;-><init>()V

    invoke-static {v0}, Lpx2;->f(Lkx2;)V

    .line 4
    new-instance v0, Lyx2;

    invoke-direct {v0}, Lyx2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 5
    new-instance v0, Lfy2;

    invoke-direct {v0}, Lfy2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 6
    new-instance v0, Lgy2;

    invoke-direct {v0}, Lgy2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    :try_start_0
    const-string v0, "AES/GCM-SIV/NoPadding"

    .line 7
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lly2;

    invoke-direct {v0}, Lly2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 9
    :cond_0
    new-instance v0, Lmy2;

    invoke-direct {v0}, Lmy2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 10
    new-instance v0, Lry2;

    invoke-direct {v0}, Lry2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 11
    new-instance v0, Lvy2;

    invoke-direct {v0}, Lvy2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 12
    new-instance v0, Lwy2;

    invoke-direct {v0}, Lwy2;-><init>()V

    invoke-static {v0}, Lpx2;->e(Lzw2;)V

    .line 13
    new-instance v0, Lux2;

    invoke-direct {v0}, Lux2;-><init>()V

    invoke-static {v0}, Lpx2;->f(Lkx2;)V

    return-void
.end method
