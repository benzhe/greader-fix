.class public Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final e:Landroid/view/View;

.field public f:Z

.field public g:I

.field public final synthetic h:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->h:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->e:Landroid/view/View;

    .line 3
    iput p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->g:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->h:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:Ljb;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljb;->j(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->e:Landroid/view/View;

    .line 3
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->h:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N(I)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$d;->f:Z

    return-void
.end method
