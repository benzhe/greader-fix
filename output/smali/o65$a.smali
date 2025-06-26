.class public Lo65$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo65;->h(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo65;


# direct methods
.method public constructor <init>(Lo65;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo65$a;->a:Lo65;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lqa;)Lqa;
    .locals 3

    .line 1
    iget-object p1, p0, Lo65$a;->a:Lo65;

    .line 2
    iget-object v0, p1, Lo65;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lo65;->g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 4
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->N:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Lo65$a;->a:Lo65;

    new-instance v0, Lo65$f;

    .line 6
    iget-object v1, p1, Lo65;->j:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, p2, v2}, Lo65$f;-><init>(Landroid/view/View;Lqa;Lo65$a;)V

    .line 8
    iput-object v0, p1, Lo65;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    .line 9
    iget-object p1, p0, Lo65$a;->a:Lo65;

    .line 10
    iget-object v0, p1, Lo65;->g:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 11
    iget-object p1, p1, Lo65;->n:Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$c;)V

    return-object p2
.end method
