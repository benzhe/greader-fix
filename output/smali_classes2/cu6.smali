.class public final synthetic Lcu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lqu6;


# direct methods
.method public synthetic constructor <init>(Lqu6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcu6;->a:Lqu6;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object p1, p0, Lcu6;->a:Lqu6;

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v0

    .line 3
    iput-boolean p2, v0, Lhw6;->b:Z

    .line 4
    iget-object v0, v0, Lhw6;->a:Landroid/content/Context;

    const-string v1, "feed_only"

    .line 5
    invoke-static {v0, v1, p2}, Liw6;->S(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lqu6;->i(Z)V

    .line 7
    invoke-virtual {p1}, Lqu6;->j()V

    :goto_0
    return-void
.end method
