.class public Li06$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li06;->a(Li06$b;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li06$b;


# direct methods
.method public constructor <init>(Li06;JJLi06$b;)V
    .locals 0

    .line 1
    iput-object p6, p0, Li06$a;->a:Li06$b;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Li06$a;->a:Li06$b;

    invoke-interface {v0}, Li06$b;->a()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
