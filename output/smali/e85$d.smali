.class public Le85$d;
.super Le85$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le85;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic e:Le85;


# direct methods
.method public constructor <init>(Le85;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le85$d;->e:Le85;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le85$h;-><init>(Le85;Lc85;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 1
    iget-object v0, p0, Le85$d;->e:Le85;

    iget v1, v0, Le85;->h:F

    iget v0, v0, Le85;->j:F

    add-float/2addr v1, v0

    return v1
.end method
