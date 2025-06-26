.class public final Lex2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lex2;->e:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Llu2;->C:Lrn2;

    .line 2
    iget-object v1, p0, Lex2;->e:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lrn2;->zza(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Llu2;->E:Lpq2;

    const/16 v2, 0x7e6

    const-wide/16 v3, -0x1

    .line 4
    invoke-virtual {v1, v2, v3, v4, v0}, Lpq2;->b(IJLjava/lang/Exception;)Le45;

    return-void
.end method
