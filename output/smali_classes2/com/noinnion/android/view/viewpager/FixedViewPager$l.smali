.class public Lcom/noinnion/android/view/viewpager/FixedViewPager$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/view/viewpager/FixedViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;

    .line 4
    iget-boolean v0, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    iget-boolean v1, p2, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->a:Z

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p1, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->e:I

    iget p2, p2, Lcom/noinnion/android/view/viewpager/FixedViewPager$f;->e:I

    sub-int/2addr p1, p2

    :goto_0
    return p1
.end method
