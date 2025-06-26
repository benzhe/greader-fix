.class public final synthetic Lsp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final e:Lop1;


# direct methods
.method public constructor <init>(Lop1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp1;->e:Lop1;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lsp1;->e:Lop1;

    .line 1
    iget-object p2, p1, Lop1;->i:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/zza;->recordClick()V

    .line 2
    iget-object p1, p1, Lop1;->k:Lnp0;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lnp0;->d()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
