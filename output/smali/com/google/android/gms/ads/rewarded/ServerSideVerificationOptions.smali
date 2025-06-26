.class public Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;Lrx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions$Builder;->b:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCustomData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;->a:Ljava/lang/String;

    return-object v0
.end method
