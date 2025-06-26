.class public final Lwp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;Lhw6;)V
    .locals 0

    iput-object p1, p0, Lwp6;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const p1, 0x7f0902bb

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lwp6;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->z(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0902bc

    if-ne p2, p1, :cond_1

    .line 2
    iget-object p1, p0, Lwp6;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->z(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;I)V

    :cond_1
    :goto_0
    return-void
.end method
