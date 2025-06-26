.class public Lq0$d;
.super Lq0$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lpi;


# direct methods
.method public constructor <init>(Lpi;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lq0$g;-><init>(Lq0$a;)V

    .line 2
    iput-object p1, p0, Lq0$d;->a:Lpi;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0$d;->a:Lpi;

    invoke-virtual {v0}, Lpi;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0$d;->a:Lpi;

    invoke-virtual {v0}, Lpi;->stop()V

    return-void
.end method
