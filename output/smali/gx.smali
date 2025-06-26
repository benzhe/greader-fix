.class public final Lgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/ads/internal/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgx;->e:Lcom/google/android/gms/ads/internal/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lgx;->e:Lcom/google/android/gms/ads/internal/zzl;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzl;->l:Ld23;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Ld23;->b:Lws2;

    invoke-interface {p1, p2}, Lws2;->zza(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
