.class public Lcom/noinnion/android/greader/ui/download/DownloadActivity$a;
.super Landroidx/viewpager/widget/ViewPager$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/download/DownloadActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/download/DownloadActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/download/DownloadActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/download/DownloadActivity$a;->a:Lcom/noinnion/android/greader/ui/download/DownloadActivity;

    .line 2
    sget v1, Lcom/noinnion/android/greader/ui/download/DownloadActivity;->C:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1100e9

    .line 4
    invoke-static {v0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1100e8

    .line 5
    invoke-static {v0, p1}, Ln56;->y2(Landroid/app/Activity;I)V

    :goto_0
    return-void
.end method
