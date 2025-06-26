.class public final synthetic Lrw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lmw1;


# direct methods
.method public constructor <init>(Lmw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrw1;->e:Lmw1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lrw1;->e:Lmw1;

    .line 1
    iget-object v0, v0, Lmw1;->h:Lan0;

    invoke-virtual {v0}, Lan0;->a()Law2;

    move-result-object v0

    const-string v1, "persistFlags"

    .line 2
    invoke-static {v0, v1}, Lc50;->e2(Law2;Ljava/lang/String;)V

    return-void
.end method
