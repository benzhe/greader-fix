.class public Ls57$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls57;-><init>(Ly37;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Lw37;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Ls57;


# direct methods
.method public constructor <init>(Ls57;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls57$a;->f:Ls57;

    iput p2, p0, Ls57$a;->e:I

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lw37;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Ls57$a;->e:I

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Ls57$a;->f:Ls57;

    .line 5
    iget v1, v0, Ls57;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ls57;->d:I

    .line 6
    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
