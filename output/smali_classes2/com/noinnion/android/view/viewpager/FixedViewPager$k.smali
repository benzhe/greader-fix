.class public Lcom/noinnion/android/view/viewpager/FixedViewPager$k;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/view/viewpager/FixedViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/view/viewpager/FixedViewPager;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;Lcom/noinnion/android/view/viewpager/FixedViewPager$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$k;->a:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$k;->a:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-virtual {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$k;->a:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-virtual {v0}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->g()V

    return-void
.end method
