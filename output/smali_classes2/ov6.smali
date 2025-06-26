.class public final synthetic Lov6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lap6;

.field public final synthetic f:Landroid/widget/RemoteViews;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lap6;Landroid/widget/RemoteViews;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lov6;->e:Lap6;

    iput-object p2, p0, Lov6;->f:Landroid/widget/RemoteViews;

    iput-object p3, p0, Lov6;->g:Landroid/content/Context;

    iput p4, p0, Lov6;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lov6;->e:Lap6;

    iget-object v1, p0, Lov6;->f:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lov6;->g:Landroid/content/Context;

    iget v3, p0, Lov6;->h:I

    .line 1
    sget-object v4, Lcom/noinnion/android/greader/ui/widget/WidgetSmallProvider;->a:Landroid/util/SparseArray;

    .line 2
    new-instance v4, Luz6;

    const/16 v5, 0xc8

    invoke-direct {v4, v5, v5}, Luz6;-><init>(II)V

    .line 3
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v5

    .line 4
    invoke-virtual {v0}, Lap6;->d()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 5
    invoke-virtual {v0}, Lap6;->n()Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/4 v0, 0x0

    .line 6
    new-instance v7, Lvv6;

    invoke-direct {v7, v1, v2, v3}, Lvv6;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;I)V

    invoke-virtual {v5, v6, v4, v0, v7}, Lhz6;->l(Ljava/lang/String;Luz6;Lgz6;Ll07;)V

    return-void
.end method
