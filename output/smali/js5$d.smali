.class public Ljs5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrr5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljs5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lex5;

.field public final b:Lfs5;

.field public c:Z

.field public final synthetic d:Ljs5;


# direct methods
.method public constructor <init>(Ljs5;Lex5;Lfs5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljs5$d;->d:Ljs5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Ljs5$d;->c:Z

    .line 3
    iput-object p2, p0, Ljs5$d;->a:Lex5;

    .line 4
    iput-object p3, p0, Ljs5$d;->b:Lfs5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ljs5$d;->c:Z

    if-eqz v0, :cond_0

    .line 2
    sget-wide v0, Ljs5;->d:J

    goto :goto_0

    .line 3
    :cond_0
    sget-wide v0, Ljs5;->c:J

    .line 4
    :goto_0
    iget-object v2, p0, Ljs5$d;->a:Lex5;

    sget-object v3, Lex5$d;->k:Lex5$d;

    .line 5
    new-instance v4, Lls5;

    invoke-direct {v4, p0}, Lls5;-><init>(Ljs5$d;)V

    .line 6
    invoke-virtual {v2, v3, v0, v1, v4}, Lex5;->b(Lex5$d;JLjava/lang/Runnable;)Lex5$b;

    return-void
.end method
