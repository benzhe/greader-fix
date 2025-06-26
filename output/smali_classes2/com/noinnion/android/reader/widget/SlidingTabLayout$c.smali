.class public Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/reader/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/reader/widget/SlidingTabLayout;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/reader/widget/SlidingTabLayout;Lcom/noinnion/android/reader/widget/SlidingTabLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;->e:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;->e:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 2
    iget-object v1, v1, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 3
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;->e:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 5
    iget-object v1, v1, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->l:Ley6;

    .line 6
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/reader/widget/SlidingTabLayout$c;->e:Lcom/noinnion/android/reader/widget/SlidingTabLayout;

    .line 8
    iget-object p1, p1, Lcom/noinnion/android/reader/widget/SlidingTabLayout;->i:Landroidx/viewpager/widget/ViewPager;

    .line 9
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
