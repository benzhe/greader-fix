.class public Llx5$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llx5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final d:Llx5$b;


# instance fields
.field public final a:I

.field public final b:Llx5$b;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Llx5$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Llx5$b;-><init>(Llx5$b;Ljava/lang/String;I)V

    sput-object v0, Llx5$b;->d:Llx5$b;

    return-void
.end method

.method public constructor <init>(Llx5$b;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llx5$b;->b:Llx5$b;

    .line 3
    iput-object p2, p0, Llx5$b;->c:Ljava/lang/String;

    .line 4
    iput p3, p0, Llx5$b;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Llx5$b;
    .locals 2

    .line 1
    new-instance v0, Llx5$b;

    iget v1, p0, Llx5$b;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Llx5$b;-><init>(Llx5$b;Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Llx5$b;->a:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Llx5$b;->c:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Llx5$b;->b:Llx5$b;

    invoke-virtual {v1}, Llx5$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llx5$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
