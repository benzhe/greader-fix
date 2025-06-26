.class public final synthetic Lu36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# static fields
.field public static final e:Lu36;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu36;

    invoke-direct {v0}, Lu36;-><init>()V

    sput-object v0, Lu36;->e:Lu36;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmg6;

    invoke-virtual {p1}, Lmg6;->E()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
