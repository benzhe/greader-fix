.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$f;
.super Lnet/frakbot/glowpadbackport/SimpleTriggerListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$f;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 1
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/SimpleTriggerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/view/View;I)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    goto :goto_0

    .line 1
    :cond_0
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$f;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$f;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->G()V

    .line 3
    :goto_0
    check-cast p1, Lnet/frakbot/glowpadbackport/GlowPadView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lnet/frakbot/glowpadbackport/GlowPadView;->reset(Z)V

    :cond_2
    return-void
.end method
