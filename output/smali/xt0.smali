.class public final Lxt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Liu0;

.field public final c:Landroid/view/ViewGroup;

.field public d:Lcom/google/android/gms/internal/ads/zzbcb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lxw0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lxt0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lxt0;->c:Landroid/view/ViewGroup;

    .line 4
    iput-object p3, p0, Lxt0;->b:Liu0;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbcb;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    .line 1
    invoke-static {v0}, Lbi;->f(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lxt0;->d:Lcom/google/android/gms/internal/ads/zzbcb;

    return-object v0
.end method
