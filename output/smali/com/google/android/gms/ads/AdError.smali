.class public Lcom/google/android/gms/ads/AdError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDEFINED_DOMAIN:Ljava/lang/String; = "undefined"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/google/android/gms/ads/AdError;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/AdError;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/google/android/gms/ads/AdError;->a:I

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    return-void
.end method


# virtual methods
.method public getCause()Lcom/google/android/gms/ads/AdError;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/ads/AdError;->a:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdError;->zzds()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Error forming toString output."

    :goto_0
    return-object v0
.end method

.method public final zzdr()Lcom/google/android/gms/internal/ads/zzvh;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v7, Lcom/google/android/gms/internal/ads/zzvh;

    iget v2, v0, Lcom/google/android/gms/ads/AdError;->a:I

    iget-object v3, v0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;Landroid/os/IBinder;)V

    move-object v12, v7

    .line 3
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvh;

    iget v9, p0, Lcom/google/android/gms/ads/AdError;->a:I

    iget-object v10, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvh;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public zzds()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/google/android/gms/ads/AdError;->a:I

    const-string v2, "Code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->b:Ljava/lang/String;

    const-string v2, "Message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->c:Ljava/lang/String;

    const-string v2, "Domain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->d:Lcom/google/android/gms/ads/AdError;

    const-string v2, "Cause"

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 6
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->zzds()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    return-object v0
.end method
