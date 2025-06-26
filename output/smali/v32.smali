.class public final synthetic Lv32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgy0;


# instance fields
.field public final a:Lcq1;

.field public final b:Lxw0;


# direct methods
.method public constructor <init>(Lcq1;Lxw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv32;->a:Lcq1;

    iput-object p2, p0, Lv32;->b:Lxw0;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lv32;->a:Lcq1;

    iget-object v0, p0, Lv32;->b:Lxw0;

    .line 2
    invoke-virtual {p1}, Lcq1;->a()V

    .line 3
    invoke-interface {v0}, Lxw0;->u()V

    .line 4
    invoke-interface {v0}, Lxw0;->I()Lhy0;

    move-result-object p1

    check-cast p1, Lww0;

    invoke-virtual {p1}, Lww0;->O()V

    return-void
.end method
