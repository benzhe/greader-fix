.class public Lns5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsr5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lns5$a;
    }
.end annotation


# instance fields
.field public final a:Lns5$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lns5$a;

    invoke-direct {v0}, Lns5$a;-><init>()V

    iput-object v0, p0, Lns5;->a:Lns5$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Liu5;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lns5;->a:Lns5$a;

    .line 2
    iget-object v0, v0, Lns5$a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
