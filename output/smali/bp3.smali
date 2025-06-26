.class public final Lbp3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Z

.field public final c:Z

.field public final d:J

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZZJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbp3;->a:Ljava/io/InputStream;

    .line 3
    iput-boolean p2, p0, Lbp3;->b:Z

    .line 4
    iput-boolean p3, p0, Lbp3;->c:Z

    .line 5
    iput-wide p4, p0, Lbp3;->d:J

    .line 6
    iput-boolean p6, p0, Lbp3;->e:Z

    return-void
.end method
