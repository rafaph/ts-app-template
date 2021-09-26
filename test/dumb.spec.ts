import { DumbResource } from "@app/dumb-resource";

describe("dumb tests", () => {
    it("dumb test", () => {
        const dumb = new DumbResource(1, 2);
        const result = dumb.execute();
        expect(result).to.be.equals(3);
    });
});
