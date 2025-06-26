.class public Ll27;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll27$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Lo17;

.field public final c:Landroid/os/Handler;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lo17;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll27;->b:Lo17;

    .line 3
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Ll27;->a:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 6
    sget-object v1, Lp27;->a:Ljava/lang/StringBuilder;

    .line 7
    new-instance v1, Lo27;

    invoke-direct {v1, v0}, Lo27;-><init>(Landroid/os/Looper;)V

    .line 8
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 9
    new-instance v0, Ll27$a;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ll27$a;-><init>(Landroid/os/Looper;Ll27;)V

    iput-object v0, p0, Ll27;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Lm27;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v25, Lm27;

    move-object/from16 v1, v25

    iget-object v2, v0, Ll27;->b:Lo17;

    invoke-interface {v2}, Lo17;->b()I

    move-result v2

    iget-object v3, v0, Ll27;->b:Lo17;

    invoke-interface {v3}, Lo17;->size()I

    move-result v3

    iget-wide v4, v0, Ll27;->d:J

    iget-wide v6, v0, Ll27;->e:J

    iget-wide v8, v0, Ll27;->f:J

    iget-wide v10, v0, Ll27;->g:J

    iget-wide v12, v0, Ll27;->h:J

    iget-wide v14, v0, Ll27;->i:J

    move-object/from16 v26, v1

    move/from16 v27, v2

    iget-wide v1, v0, Ll27;->j:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Ll27;->k:J

    move-wide/from16 v18, v1

    iget v1, v0, Ll27;->l:I

    move/from16 v20, v1

    iget v1, v0, Ll27;->m:I

    move/from16 v21, v1

    iget v1, v0, Ll27;->n:I

    move/from16 v22, v1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Lm27;-><init>(IIJJJJJJJJIIIJ)V

    return-object v25
.end method
