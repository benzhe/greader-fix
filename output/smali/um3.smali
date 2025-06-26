.class public final Lum3;
.super Lot3;
.source "SourceFile"


# instance fields
.field public final f:Lcom/google/android/gms/ads/admanager/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/admanager/AppEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lot3;-><init>()V

    .line 2
    iput-object p1, p0, Lum3;->f:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-void
.end method


# virtual methods
.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lum3;->f:Lcom/google/android/gms/ads/admanager/AppEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/admanager/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
