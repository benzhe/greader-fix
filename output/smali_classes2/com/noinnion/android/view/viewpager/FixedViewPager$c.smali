.class public Lcom/noinnion/android/view/viewpager/FixedViewPager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/view/viewpager/FixedViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/view/viewpager/FixedViewPager;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/view/viewpager/FixedViewPager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$c;->e:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$c;->e:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->a(Lcom/noinnion/android/view/viewpager/FixedViewPager;I)V

    .line 2
    iget-object v0, p0, Lcom/noinnion/android/view/viewpager/FixedViewPager$c;->e:Lcom/noinnion/android/view/viewpager/FixedViewPager;

    .line 3
    iget v1, v0, Lcom/noinnion/android/view/viewpager/FixedViewPager;->j:I

    invoke-virtual {v0, v1}, Lcom/noinnion/android/view/viewpager/FixedViewPager;->s(I)V

    return-void
.end method
