.class public final Lbq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Z

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;Landroid/content/Context;ZI)V
    .locals 0

    iput-object p1, p0, Lbq6;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    iput-object p2, p0, Lbq6;->f:Landroid/content/Context;

    iput-boolean p3, p0, Lbq6;->g:Z

    iput p4, p0, Lbq6;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string p1, "application_theme_auto_dark"

    const/4 v0, 0x1

    const v1, 0x7f090313

    if-ne p2, v1, :cond_0

    .line 1
    iget-object v1, p0, Lbq6;->f:Landroid/content/Context;

    iget-boolean v2, p0, Lbq6;->g:Z

    xor-int/2addr v2, v0

    .line 2
    invoke-static {v1, p1, v2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 3
    invoke-static {}, Lon6;->l()V

    .line 4
    iget-object v1, p0, Lbq6;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-static {v1}, Llw6;->a(Landroid/app/Activity;)V

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    :goto_0
    :pswitch_4
    if-ne v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-boolean p2, p0, Lbq6;->g:Z

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lbq6;->f:Landroid/content/Context;

    .line 7
    invoke-static {p2, p1, v2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 8
    :cond_2
    iget p1, p0, Lbq6;->h:I

    if-eq v0, p1, :cond_3

    .line 9
    iget-object p1, p0, Lbq6;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    .line 10
    sget-object p2, Liw6;->a:Ljava/lang/reflect/Method;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "application_theme"

    invoke-static {p1, v1, p2}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lon6;->l()V

    .line 13
    iget-object p1, p0, Lbq6;->e:Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;

    invoke-static {p1, v0}, Llw6;->b(Landroid/app/Activity;I)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f090314
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
