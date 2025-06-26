.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "c"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR_LOGIN"

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "com.noinnion.android.greader.reader.action.SYNC_FINISHED"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string p1, "com.noinnion.android.greader.reader.action.SYNC_SUBS_FINISHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :sswitch_3
    const-string v1, "com.noinnion.android.greader.reader.action.START_SYNC_RESULT"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "syncStarted"

    .line 4
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "syncFinished"

    .line 5
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p2, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 7
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 8
    iget-boolean p2, p2, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->I:Z

    if-eqz p2, :cond_2

    .line 9
    invoke-static {p1}, Ln56;->s(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    goto :goto_1

    :sswitch_4
    const-string p1, "com.noinnion.android.greader.reader.action.REFRESH_ITEM_LIST"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->R()V

    goto :goto_1

    :sswitch_5
    const-string p1, "com.noinnion.android.greader.reader.action.STOP_SYNC_ERROR"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1, v3}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->S(Z)V

    .line 14
    invoke-static {v0, v2}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-static {p1}, Ln56;->i2(Landroid/app/Activity;)V

    goto :goto_1

    :sswitch_6
    const-string p1, "com.noinnion.android.greader.reader.action.FORCE_REFRESH_UI"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->K()V

    goto :goto_1

    :sswitch_7
    const-string p1, "com.noinnion.android.greader.reader.action.FULLSCREEN"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "fullscreen"

    .line 18
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 19
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$mReceiver$1;->a:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-static {p2, p1}, Ln56;->S1(Landroid/app/Activity;Z)V

    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64392a54 -> :sswitch_7
        -0x56115243 -> :sswitch_6
        -0x4e700fb0 -> :sswitch_5
        -0x485ec14b -> :sswitch_4
        -0x1974654d -> :sswitch_3
        -0x115bb0b5 -> :sswitch_2
        0x103ece9a -> :sswitch_1
        0x14958e05 -> :sswitch_0
    .end sparse-switch
.end method
