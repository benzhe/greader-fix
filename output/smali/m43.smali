.class public final Lm43;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavax/crypto/Mac;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj43;


# direct methods
.method public constructor <init>(Lj43;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm43;->a:Lj43;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialValue()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lb43;->f:Lb43;

    iget-object v1, p0, Lm43;->a:Lj43;

    .line 2
    iget-object v1, v1, Lj43;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lb43;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 4
    iget-object v1, p0, Lm43;->a:Lj43;

    .line 5
    iget-object v1, v1, Lj43;->c:Ljava/security/Key;

    .line 6
    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
