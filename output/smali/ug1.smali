.class public final synthetic Lug1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob1;


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Lcom/google/android/gms/internal/ads/zzbar;

.field public final g:Lsk2;

.field public final h:Lll2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbar;Lsk2;Lll2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug1;->e:Landroid/content/Context;

    iput-object p2, p0, Lug1;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iput-object p3, p0, Lug1;->g:Lsk2;

    iput-object p4, p0, Lug1;->h:Lll2;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lug1;->e:Landroid/content/Context;

    iget-object v1, p0, Lug1;->f:Lcom/google/android/gms/internal/ads/zzbar;

    iget-object v2, p0, Lug1;->g:Lsk2;

    iget-object v3, p0, Lug1;->h:Lll2;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlf()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object v4

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbar;->e:Ljava/lang/String;

    iget-object v2, v2, Lsk2;->B:Lorg/json/JSONObject;

    .line 3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lll2;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
