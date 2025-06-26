.class public Lcom/google/android/material/navigation/NavigationBarItemView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationBarItemView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$a;->a:Lcom/google/android/material/navigation/NavigationBarItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$a;->a:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 2
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarItemView$a;->a:Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 5
    iget-object p2, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->k:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->b()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarItemView;->t:Lcom/google/android/material/badge/BadgeDrawable;

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lc65;->c(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    :goto_0
    return-void
.end method
