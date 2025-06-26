.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    const-string v0, "v"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090048

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f09019e

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902e7

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->O()V

    return v1

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M()V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$e;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-static {p1}, Ln56;->x2(Landroid/app/Activity;)V

    return v1
.end method
