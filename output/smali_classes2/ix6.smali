.class public Lix6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lkw6;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkw6;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lix6;->b:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lix6;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lix6;->d:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lix6;->a:Lkw6;

    .line 6
    iput-boolean p2, p0, Lix6;->b:Z

    .line 7
    iput-object p3, p0, Lix6;->c:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lix6;->d:Ljava/lang/String;

    return-void
.end method
