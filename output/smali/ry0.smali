.class public Lry0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lry0$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbar;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lry0$a;Lty0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lry0$a;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 3
    iput-object p2, p0, Lry0;->a:Lcom/google/android/gms/internal/ads/zzbar;

    .line 4
    iget-object p2, p1, Lry0$a;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lry0;->b:Landroid/content/Context;

    .line 6
    iget-object p1, p1, Lry0$a;->c:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p1, p0, Lry0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method
