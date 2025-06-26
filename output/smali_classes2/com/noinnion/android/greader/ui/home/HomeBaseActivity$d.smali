.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
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
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->P(I)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->B()V

    goto :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->P(I)V

    .line 5
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->B()V

    goto :goto_0

    .line 6
    :sswitch_2
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->P(I)V

    .line 7
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->B()V

    goto :goto_0

    .line 8
    :sswitch_3
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$d;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->N()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090048 -> :sswitch_3
        0x7f090164 -> :sswitch_2
        0x7f090168 -> :sswitch_1
        0x7f09016b -> :sswitch_0
    .end sparse-switch
.end method
