.class public Lpx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lex5;

.field public final b:Lex5$d;

.field public final c:J

.field public final d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:Lex5$b;


# direct methods
.method public constructor <init>(Lex5;Lex5$d;JDJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpx5;->a:Lex5;

    .line 3
    iput-object p2, p0, Lpx5;->b:Lex5$d;

    .line 4
    iput-wide p3, p0, Lpx5;->c:J

    .line 5
    iput-wide p7, p0, Lpx5;->d:J

    .line 6
    iput-wide p7, p0, Lpx5;->e:J

    .line 7
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    iput-wide p1, p0, Lpx5;->g:J

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lpx5;->f:J

    return-void
.end method
