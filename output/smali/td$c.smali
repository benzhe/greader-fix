.class public Ltd$c;
.super Lnd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final d:Lod;


# instance fields
.field public b:Ln4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln4<",
            "Ltd$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltd$c$a;

    invoke-direct {v0}, Ltd$c$a;-><init>()V

    sput-object v0, Ltd$c;->d:Lod;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnd;-><init>()V

    .line 2
    new-instance v0, Ln4;

    const/16 v1, 0xa

    .line 3
    invoke-direct {v0, v1}, Ln4;-><init>(I)V

    .line 4
    iput-object v0, p0, Ltd$c;->b:Ln4;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ltd$c;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ltd$c;->b:Ln4;

    invoke-virtual {v0}, Ln4;->j()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Ltd$c;->b:Ln4;

    invoke-virtual {v3, v2}, Ln4;->k(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltd$a;

    const/4 v4, 0x1

    .line 3
    invoke-virtual {v3, v4}, Ltd$a;->j(Z)Lwd;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Ltd$c;->b:Ln4;

    .line 5
    iget v2, v0, Ln4;->h:I

    .line 6
    iget-object v3, v0, Ln4;->g:[Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    const/4 v5, 0x0

    .line 7
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iput v1, v0, Ln4;->h:I

    .line 9
    iput-boolean v1, v0, Ln4;->e:Z

    return-void
.end method
