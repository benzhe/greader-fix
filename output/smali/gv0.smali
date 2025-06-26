.class public final synthetic Lgv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhk3;


# instance fields
.field public final a:Lcv0;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcv0;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgv0;->a:Lcv0;

    iput-object p2, p0, Lgv0;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lgv0;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lek3;
    .locals 5

    iget-object v0, p0, Lgv0;->a:Lcv0;

    iget-object v1, p0, Lgv0;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lgv0;->c:Z

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v3, Llk3;

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v0, v0, Lcv0;->j:Lfu0;

    iget v4, v0, Lfu0;->d:I

    iget v0, v0, Lfu0;->e:I

    invoke-direct {v3, v1, v2, v4, v0}, Llk3;-><init>(Ljava/lang/String;Lsk3;II)V

    return-object v3
.end method
