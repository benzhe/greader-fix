.class public final Lob3;
.super Lv3;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnb3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnb3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv3;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lob3;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lob3;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnb3;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lnb3;->a()V

    :cond_0
    return-void
.end method
