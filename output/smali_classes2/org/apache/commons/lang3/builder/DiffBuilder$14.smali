.class public Lorg/apache/commons/lang3/builder/DiffBuilder$14;
.super Lorg/apache/commons/lang3/builder/Diff;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/lang3/builder/DiffBuilder;->append(Ljava/lang/String;[J[J)Lorg/apache/commons/lang3/builder/DiffBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/lang3/builder/Diff<",
        "[",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final synthetic this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

.field public final synthetic val$lhs:[J

.field public final synthetic val$rhs:[J


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/builder/DiffBuilder;Ljava/lang/String;[J[J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->this$0:Lorg/apache/commons/lang3/builder/DiffBuilder;

    iput-object p3, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$lhs:[J

    iput-object p4, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$rhs:[J

    invoke-direct {p0, p2}, Lorg/apache/commons/lang3/builder/Diff;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLeft()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->getLeft()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLeft()[Ljava/lang/Long;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$lhs:[J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRight()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->getRight()[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRight()[Ljava/lang/Long;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/DiffBuilder$14;->val$rhs:[J

    invoke-static {v0}, Lorg/apache/commons/lang3/ArrayUtils;->toObject([J)[Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
