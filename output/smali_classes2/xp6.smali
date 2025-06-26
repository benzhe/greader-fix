.class public final Lxp6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lxp6;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lxp6;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 2
    sget p2, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->O:I

    .line 3
    new-instance p2, Ljq6;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Ljq6;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$b;

    invoke-direct {v0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$b;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    .line 5
    iget-object v1, p2, Lvm6;->b:Lwm6;

    const-string v2, "DEFAULT_FINISHED_EVENT"

    invoke-virtual {v1, v2, v0}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    .line 6
    new-instance v0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$b;

    invoke-direct {v0, p1}, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$b;-><init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;)V

    .line 7
    iget-object v1, p2, Lvm6;->b:Lwm6;

    const-string v2, "DEFAULT_ERROR_EVENT"

    invoke-virtual {v1, v2, v0}, Lwm6;->b(Ljava/lang/String;Lbn6;)V

    const v0, 0x7f1101ca

    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->w:Landroid/app/ProgressDialog;

    .line 9
    invoke-virtual {p2, v3}, Lvm6;->e(Ljava/lang/Object;)J

    .line 10
    iput-object p2, p1, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;->J:Ljq6;

    return-void
.end method
