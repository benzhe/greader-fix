.class public Lm7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk7;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk7;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/app/PendingIntent;

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ln7;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Landroid/os/Bundle;

.field public p:I

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Landroid/app/Notification;

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm7;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm7;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lm7;->i:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lm7;->n:Z

    .line 6
    iput v1, p0, Lm7;->p:I

    .line 7
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Lm7;->s:Landroid/app/Notification;

    .line 8
    iput-object p1, p0, Lm7;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lm7;->q:Ljava/lang/String;

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    .line 11
    iget-object p1, p0, Lm7;->s:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 12
    iput v1, p0, Lm7;->h:I

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lm7;->t:Ljava/util/ArrayList;

    .line 14
    iput-boolean v0, p0, Lm7;->r:Z

    return-void
.end method

.method public static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Lm7;
    .locals 2

    .line 1
    iget-object v0, p0, Lm7;->b:Ljava/util/ArrayList;

    new-instance v1, Lk7;

    invoke-direct {v1, p1, p2, p3}, Lk7;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Landroid/app/Notification;
    .locals 5

    .line 1
    new-instance v0, Lo7;

    invoke-direct {v0, p0}, Lo7;-><init>(Lm7;)V

    .line 2
    iget-object v1, v0, Lo7;->b:Lm7;

    iget-object v1, v1, Lm7;->j:Ln7;

    if-eqz v1, :cond_0

    .line 3
    move-object v2, v1

    check-cast v2, Ll7;

    .line 4
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 5
    iget-object v4, v0, Lo7;->a:Landroid/app/Notification$Builder;

    .line 6
    invoke-direct {v3, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    iget-object v2, v2, Ll7;->b:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 9
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 10
    iget-object v2, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    .line 11
    iget-object v2, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, v0, Lo7;->a:Landroid/app/Notification$Builder;

    iget-object v3, v0, Lo7;->d:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 13
    iget-object v2, v0, Lo7;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 14
    :goto_0
    iget-object v3, v0, Lo7;->b:Lm7;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 15
    iget-object v0, v0, Lo7;->b:Lm7;

    iget-object v0, v0, Lm7;->j:Ln7;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    .line 17
    iget-object v0, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_4
    return-object v2
.end method

.method public d(Ljava/lang/CharSequence;)Lm7;
    .locals 0

    .line 1
    invoke-static {p1}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lm7;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lm7;
    .locals 0

    .line 1
    invoke-static {p1}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lm7;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final f(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lm7;->s:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lm7;->s:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method public g(III)Lm7;
    .locals 1

    .line 1
    iget-object v0, p0, Lm7;->s:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 2
    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget p2, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p2, -0x2

    or-int/2addr p1, p2

    .line 5
    iput p1, v0, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public h(Landroid/net/Uri;)Lm7;
    .locals 2

    .line 1
    iget-object v0, p0, Lm7;->s:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    .line 2
    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 4
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v1, 0x5

    .line 5
    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public i(Ln7;)Lm7;
    .locals 1

    .line 1
    iget-object v0, p0, Lm7;->j:Ln7;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lm7;->j:Ln7;

    .line 3
    iget-object v0, p1, Ln7;->a:Lm7;

    if-eq v0, p0, :cond_0

    .line 4
    iput-object p0, p1, Ln7;->a:Lm7;

    .line 5
    invoke-virtual {p0, p1}, Lm7;->i(Ln7;)Lm7;

    :cond_0
    return-object p0
.end method

.method public j(Ljava/lang/CharSequence;)Lm7;
    .locals 1

    .line 1
    iget-object v0, p0, Lm7;->s:Landroid/app/Notification;

    invoke-static {p1}, Lm7;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
