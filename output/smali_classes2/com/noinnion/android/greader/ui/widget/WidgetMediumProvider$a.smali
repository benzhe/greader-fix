.class public final Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider;->c(Landroid/content/Context;IZ)Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Lap6;

.field public final synthetic g:Landroid/widget/RemoteViews;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:I


# direct methods
.method public constructor <init>(ZLap6;Landroid/widget/RemoteViews;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->e:Z

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->f:Lap6;

    iput-object p3, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->g:Landroid/widget/RemoteViews;

    iput-object p4, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->h:Landroid/content/Context;

    iput p5, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Luz6;

    const/16 v1, 0xc8

    invoke-direct {v0, v1, v1}, Luz6;-><init>(II)V

    .line 2
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->e:Z

    invoke-virtual {v1, v2}, Lhz6;->e(Z)V

    .line 4
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->f:Lap6;

    invoke-virtual {v2}, Lap6;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;->f:Lap6;

    invoke-virtual {v2}, Lap6;->n()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/4 v3, 0x0

    .line 6
    new-instance v4, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;

    invoke-direct {v4, p0}, Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a$a;-><init>(Lcom/noinnion/android/greader/ui/widget/WidgetMediumProvider$a;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lhz6;->l(Ljava/lang/String;Luz6;Lgz6;Ll07;)V

    return-void
.end method
