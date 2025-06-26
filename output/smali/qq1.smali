.class public final synthetic Lqq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lpq1;


# direct methods
.method public constructor <init>(Lpq1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq1;->e:Lpq1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqq1;->e:Lpq1;

    .line 1
    invoke-virtual {v0}, Lpq1;->a()V

    return-void
.end method
