.class public final synthetic Lj66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc7;


# instance fields
.field public final a:Lk66;

.field public final b:La66;


# direct methods
.method public constructor <init>(Lk66;La66;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj66;->a:Lk66;

    iput-object p2, p0, Lj66;->b:La66;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lj66;->a:Lk66;

    iget-object v1, p0, Lj66;->b:La66;

    .line 1
    sget-object v2, Lk66;->d:La66;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "item is null"

    .line 3
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v2, Lkg7;

    invoke-direct {v2, v1}, Lkg7;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object v2, v0, Lk66;->c:Lrb7;

    return-void
.end method
