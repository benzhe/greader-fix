.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const p1, 0x7f09019f

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    new-instance p2, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;

    invoke-direct {p2, p0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l$a;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;)V

    invoke-static {p1, p2}, Lcom/noinnion/android/greader/ui/setting/MarkReadPreferenceFragment;->j(Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    packed-switch p2, :pswitch_data_0

    move-wide p1, v0

    goto :goto_1

    .line 2
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const v2, 0xf731400

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const v2, 0x48190800

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const v2, 0xa4cb800

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const v2, 0x240c8400

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const v2, 0x5265c00

    :goto_0
    int-to-long v2, v2

    sub-long/2addr p1, v2

    :goto_1
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 8
    sget v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->O:I

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;

    .line 11
    invoke-direct {v1, v0}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    .line 12
    iput-wide p1, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->a:J

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, v1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$c;->b:Z

    new-array p1, p1, [Ljava/lang/Void;

    .line 14
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 15
    invoke-virtual {v1, p2, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$l;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->H()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f090198
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
