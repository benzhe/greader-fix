.class public final synthetic Le66;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lk66;


# direct methods
.method public constructor <init>(Lk66;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le66;->e:Lk66;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le66;->e:Lk66;

    check-cast p1, La66;

    .line 1
    sget-object v1, Lk66;->d:La66;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "item is null"

    .line 3
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lkg7;

    invoke-direct {v1, p1}, Lkg7;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object v1, v0, Lk66;->c:Lrb7;

    return-void
.end method
