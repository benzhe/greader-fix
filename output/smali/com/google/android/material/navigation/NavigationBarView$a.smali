.class public Lcom/google/android/material/navigation/NavigationBarView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/material/navigation/NavigationBarView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView$a;->e:Lcom/google/android/material/navigation/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj1;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView$a;->e:Lcom/google/android/material/navigation/NavigationBarView;

    .line 2
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarView;->k:Lcom/google/android/material/navigation/NavigationBarView$b;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarView$a;->e:Lcom/google/android/material/navigation/NavigationBarView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarView;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView$a;->e:Lcom/google/android/material/navigation/NavigationBarView;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarView;->k:Lcom/google/android/material/navigation/NavigationBarView$b;

    .line 6
    invoke-interface {p1, p2}, Lcom/google/android/material/navigation/NavigationBarView$b;->a(Landroid/view/MenuItem;)V

    return v0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarView$a;->e:Lcom/google/android/material/navigation/NavigationBarView;

    .line 8
    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarView;->j:Lcom/google/android/material/navigation/NavigationBarView$c;

    if-eqz p1, :cond_1

    .line 9
    invoke-interface {p1, p2}, Lcom/google/android/material/navigation/NavigationBarView$c;->a(Landroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lj1;)V
    .locals 0

    return-void
.end method
